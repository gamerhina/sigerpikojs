<?php

/**
 * @file plugins/themes/sigerpikModern/index.php
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_sigerpikModern
 * @brief Wrapper for sigerpikModern theme plugin.
 *
 */

require_once('SigerpikModernThemePlugin.php');

return new \APP\plugins\themes\sigerpikModern\SigerpikModernThemePlugin();
