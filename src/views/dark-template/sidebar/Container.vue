<template>
  <v-card
    color="grey darken-3"
    dark
  >
    <v-card-text>
      <avatar />
      <div class="text-sm-center mb-4 mt-3">
        <h1>
          Dian <span class="light-blue--text text--lighten-3">Hanifudin</span> Subhi
        </h1>
        <span>
          IT Lecturer and Tech Enthusiast
        </span>
      </div>

      <sidebar-section :options="sections.info" />
      <sidebar-section :options="sections.socials" />
      <sidebar-section :options="sections.hobbies">
        <template v-slot:item="{item}">
          <v-chip>
            <v-avatar>
              <v-icon>
                {{ item.icon }}
              </v-icon>
            </v-avatar>
            {{ item.text }}
          </v-chip>
        </template>
      </sidebar-section>
      <sidebar-section :options="sections.tools">
        <template v-slot:item="{item}">
          <v-chip>
            <v-avatar>
              <v-icon>
                {{ item.icon }}
              </v-icon>
            </v-avatar>
            {{ item.text }}
          </v-chip>
        </template>
      </sidebar-section>
      <sidebar-section :options="sections.languages">
        <template v-slot:items="{items}">
          <v-container pa-0>
            <v-layout
              wrap
              class="text-xs-center"
            >
              <template
                v-for="(item, i) in items"
              >
                <v-flex
                  :key="i"
                  md3
                  sm4
                  xs6
                >
                  <v-progress-circular
                    rotate="360"
                    size="65"
                    width="2"
                    :value="item.value"
                    color="white"
                    class="ma-2"
                  >
                    {{ item.text }}
                  </v-progress-circular>
                </v-flex>
              </template>
            </v-layout>
          </v-container>
        </template>
      </sidebar-section>
    </v-card-text>
  </v-card>
</template>

<script>
import Avatar from '@/views/dark-template/sidebar/Avatar'
import SidebarSection from '@/views/dark-template/sidebar/Section'
export default {
  name      : 'Sidebar',
  components: { SidebarSection, Avatar },
  data () {
    return {
      sections: {
        info: {
          title: 'INFO',
          items: [
            {
              name: 'Email',
              icon: 'mdi-email',
              text: 'dhanifudin@polinema.ac.id',
            },
            {
              name: 'Website',
              icon: 'mdi-web',
              text: 'dhanifudin.com',
            },
            {
              name: 'Habitation',
              icon: 'mdi-map-marker',
              text: 'Malang, Indonesia',
            },
          ],
        },
        socials: {
          title: 'SOCIALS',
          items: [
            {
              icon: 'mdi-github-circle',
              text: 'dhanifudin',
              link: 'https://github.com/dhanifudin',
            },
            {
              icon: 'mdi-linkedin-box',
              text: 'Dian Hanifudin Subhi',
              link: 'https://linkedin.com/in/dhanifudin',
            },
            {
              icon: 'mdi-twitter',
              text: '@dhanifudin',
              link: 'https://twitter.com/dhanifudin',
            },
            {
              icon: 'mdi-instagram',
              text: 'dhanifudin',
              link: 'https://instagram.com/dhanifudin',
            },
          ],
        },
        hobbies: {
          title: 'HOBBIES',
          items: [

            {
              icon: 'mdi-keyboard',
              text: 'Mechanical Keyboard',
            },
            {
              icon: 'mdi-biohazard',
              text: 'Challenges',
            },
            {
              icon: 'mdi-wallet-travel',
              text: 'Travel',
            },
            {
              icon: 'mdi-image-filter-hdr',
              text: 'Nature',
            },
            {
              icon: 'mdi-auto-fix',
              text: 'Hacking Stuffs',
            },
            {
              icon: 'mdi-teach',
              text: 'Teaching',
            },
            {
              icon: 'mdi-football',
              text: 'Sports',
            },
            {
              icon: 'mdi-android-debug-bridge',
              text: 'Tickling Bugs!',
            },
          ],
        },
        tools: {
          title: 'TOOLS',
          items: [

            {
              icon: 'mdi-console',
              text: 'CLI',
            },
            {
              icon: 'mdi-code-tags',
              text: 'Neovim',
            },
            {
              icon: 'mdi-desktop-mac',
              text: 'Mac Mini',
            },
            {
              icon: 'mdi-linux',
              text: 'VPS Linux',
            },
            {
              icon: 'mdi-keyboard',
              text: 'Vortex Core',
            },
          ],
        },
        languages: {
          title: 'LANGUAGES',
          items: [
            {
              text : 'English',
              value: 60,
            },
            {
              text : 'Indonesian',
              value: 70,
            },
            {
              text : 'Javanese',
              value: 80,
            },
          ],
        },
      },
    }
  },
}
</script>

<style scoped>
.sidebar{
    background: #2e2e2e;
}
</style>
